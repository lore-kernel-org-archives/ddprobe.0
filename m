Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADFE7A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 03:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650855898;
	h=To:Subject:From:Message-Id:Date;
	bh=Z8jv3r3eWbR5w5xV/cfGzhHHQqSrLxvrrRYZU0AQjKU=;
	b=PXuvar4/N2XMyn3/OJdhLUooULfUn93LhtTOdjkYAOrPkdXw+2I6+AocmUqQ5hex
	dIE6JN8sz6VWneyCTyveR/Jzd6SFM4GigJ6M4WgaKzS1/ieKcVpG6QHV4UO7MBH4h8d
	qpWICb3X4jg/4oSbz6toi+8DmlpX3kZdglrKjXG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650855898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z8jv3r3eWbR5w5xV/cfGzhHHQqSrLxvrrRYZU0AQjKU=;
	b=jI8grSWdzHw+6wolCLHOFvdVp/7mgLUx81HyLlADtFIVcrVEkEE5EJnaWO0Mcllc
	rYEFPyPS1vujqSzdVfkSvnB1l/uo9+HiJT//SxaRIWRxL42gyudM598cper+6pB6Vz3
	TNWtnrTb092dXVwJjB8z098fA0kZYzoxxjJFE4+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805eadecd4-bfe40d49-5ac2-4eb8-b974-8a75a1fd3b64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f3a121e1aa69aba1223cda335ab937c3644436e1fe037f65ef386240b8d05cb
Date: Mon, 25 Apr 2022 03:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650855898
