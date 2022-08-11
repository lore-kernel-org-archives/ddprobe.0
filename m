Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7063C2F28
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660213252;
	h=To:Subject:From:Message-Id:Date;
	bh=cHGBjD9EMVGJASlcgf3tuPCHhdG8GDInZKD0CrD8JJk=;
	b=Wq8pCW1N1bdabmA5/e3IYwMZkad+XIHh2sKOySvJ9GfF0m92q3cwaEctCrw41EZZ
	e0AGeV7Co+DQAjczvKG1zUvEf7SyBfJ2m3Vz/UHN6E/7FK2Wx/PsX8dJi82wPvTSD73
	G5vgdSMyUYyLL1apAhc4jDVu4CdT0xOOnHWZk8GA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660213252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cHGBjD9EMVGJASlcgf3tuPCHhdG8GDInZKD0CrD8JJk=;
	b=UlzoxuDWoghqlrkbYsHJqRxITzc5/aMyB2+Zsc3fS9bBEpViePn2GqaQVQm9wAqI
	40xc+K1atNoyIVL38JZbxT8wm5TaylwaIl0Mvu8kuSCnhfBNOvKbbVOAB3L5kMsYmVx
	jLk4bg4VjIvi/2tYEP0xWhfmgEjYusLezdmITaxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828c6bd1c9-5a4af383-f519-481d-a5f0-e68dac71b7c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3b10d6a156bf49ddb84b4d9692ee6f95e70376c4b7916d3e939ec29aa28d710
Date: Thu, 11 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660213252
