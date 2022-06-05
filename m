Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69A64680
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 08:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654418099;
	h=To:Subject:From:Message-Id:Date;
	bh=hBtXBS4oBgIp5vYUwd+n4flmPAMFYoSGyP7UYMxFt3Y=;
	b=B8u3+rARqCBuOSrchIp9cdaKvCr854yqDFfP+38yyOzoNSYnKwS1Q9VUZLYjpLR/
	KjqxguHrna1lq54DAtNtpZ+uw5sC88uu27jYx6ApmDFrLZWrFZaXTLF9raQBlZn3vNe
	/q0ZBJej2AhaoVUiChqc6B1ZmveFwzDxQw5tSk9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654418099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hBtXBS4oBgIp5vYUwd+n4flmPAMFYoSGyP7UYMxFt3Y=;
	b=YhxFICpcTjmriN77WMRPTBvDu/DcV6oUHpKSC0sqGudB3evSVpUrzZBBbgf9aeQp
	oFbQ53FtHAkxNhtVAzmZDzqCCHddfja6ecDGoFVeTYN/5Ahjmro0k0i+G23Be6/XdPm
	myhi0kx2E9eoFMfHmEnadTNODjyI+J40uCJA9hY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813300cc6c-1a8a02bb-b689-4590-b314-5d22ef234d16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1823b3bab439c12cad6d35466bab439446ad462ccd85d3f84ac03d1a778c9c7
Date: Sun, 5 Jun 2022 08:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654418099
