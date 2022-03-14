Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA94C6AD9
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647295885;
	h=To:Subject:From:Message-Id:Date;
	bh=TEjNjBjNGD/E0nFHdoIVLla0xvIbqNZQcyXwDZ00b84=;
	b=FBjquUYENs7twLtyo+EfXEH8rPUWd8rFtc1A46+TTIWLqNf0/oJ4dtZug1YcmQDB
	vco88YeH+odJHuFwTgUflwOR2q9YpTgvFR+WmI53Z0YWodDMgeFvZGfZ29Di/1sBIgc
	yYEgrzLLpTGOKxMabB41iC+IAhgsZtd7LIp8oMoA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647295885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TEjNjBjNGD/E0nFHdoIVLla0xvIbqNZQcyXwDZ00b84=;
	b=LzB3ze5yvqHLGFancN96+ixSwyPjZZzBwjRm5UvILHLGOWf+dLhoEqZUSwdayQiO
	+ocn8FHbMFA6k0kgHukQKzwjq8NPWjM4+fV/WZ1cR4Wgmycnaq6NH8yOQC2lYLaY4aW
	EeniSMZWnLujkI/CtdSXI2hynUUYT6Hw3vuU6V9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a7c6e1f-9fb4fc94-a54a-46ff-b153-0aff07f8b894-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 919adf4c6d585c3fb8a10a7e54f9f261046539c6495d08f910ea8dbeaedbcd84
Date: Mon, 14 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647295884
