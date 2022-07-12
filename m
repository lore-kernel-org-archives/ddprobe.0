Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8A84681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657669612;
	h=To:Subject:From:Message-Id:Date;
	bh=Zp8iCnctU3n00viHTDiuQ+KawQVrfM4HEm/0UPcfkWQ=;
	b=P/aQLMXe3HxrupDQmjDsJ0Wi5O5LgU1mXA2OCrpFQ03DAiIezu2Ae6niosn1KQZ0
	c0GsResBpF7VsFVH2VngKmPhRNtN+fWyAKcFrG/dMHMdwFl3TQRS1jZtCzPLhqjx2YP
	pJGw9QojA4Tglf0wW988cfUcGwU6iW9/80QiO71M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657669612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zp8iCnctU3n00viHTDiuQ+KawQVrfM4HEm/0UPcfkWQ=;
	b=fk5jf050L1qHa2cYYp4xG0/PXl+oT1GQAAlwWnt9/JAsVaWOwlPI5Q9b7euhNvVK
	LXy+5O2gc5mfxBUnSokDEwptvqkPkLAvkYSuqDujvNLW5ZXsgxjNkU4cVkCj1kVun1u
	dQvrag1EOqAWp0GjoLWN+7ogenZmPGzmt6Gz8HDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f4cef31b-5057e72b-19bf-4294-ac75-5659ed798d28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0aefdde2398b51d08a949c76015833aaaac904032cb2ecac288e9026c528c4a0
Date: Tue, 12 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657669612
