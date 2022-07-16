Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17880181
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 00:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657930012;
	h=To:Subject:From:Message-Id:Date;
	bh=QF9PUPaYdzCgPEQL4nwtZPHvpPitVO7TMnEHZEeAiFg=;
	b=GfyDHxfcXE7d3sjnWXk/KkSChF8OePdDqmISdZjD2l7LNSEFt6rNiqxmcgKiXFaV
	uiOvJHu9ZScMev2lj81DqYM98xAq37cCqzgJ+0QXJ2r33Cm4PyTVgMupsaV1pZNV0Up
	7iacJvF5FtjgzfNu6DkkNgBL4f5ICoxfyuKua/xw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657930012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QF9PUPaYdzCgPEQL4nwtZPHvpPitVO7TMnEHZEeAiFg=;
	b=ea3eHHiMuAvIHh3YiTBX/6T8ykYoAziSzJknDLp0tj/dkjA/a55Oag4yx3ztWF3p
	87mmCAQA/EOm+dfHMnn2QqwHrUrOkKl+2VfAdCJt9RmduRrOUt9hCF/ZkBa3I8CMzIA
	5S/b4b509cpe+SHQa04Z8C1SeBPjSxOZQm7ku17E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820454566b-59aef823-7a2e-47a3-9657-46a33f6fc033-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95abc7084e3f24c8acb7fa5ff8131360e8db192d3fb446480d8b2e55eb65c78f
Date: Sat, 16 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657930012
