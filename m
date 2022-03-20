Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4485F29AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647778884;
	h=To:Subject:From:Message-Id:Date;
	bh=nAiT+Bj0sZiYZJ+yO8aIT1JRsxejEvlAUBsQwhK/M18=;
	b=KGVHJictxlDAiwXnqB1t3O+KmBp7140A5TXKEjpjMrt1cSDaGN9LBcAKkXaNvdoB
	Y/QUmLNHXEYBnvxAmkjvjTmvo6zCf2ofMuqstfrykGxfyvz4w7P7phXx5JRmbwU0XVR
	eI1dl9rgic72cPxERTkuAh3EzFKT+VpcenjHJX0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647778884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nAiT+Bj0sZiYZJ+yO8aIT1JRsxejEvlAUBsQwhK/M18=;
	b=Wv6T271e5VS/kv7jyUz3PSjhIHkV7Oet6m+KEjl84RGxGAc8nunnyWUK2VIG01Dd
	dOGuMc4IrRIWZ7ebc8gz6jTM9T+zpvoSVsaxXZpaYL9m9ZXwARoD5Q6To4ozPj2zmb6
	LMG0T8BBKFW0TmDS7EPCqc+c2CRAnJWVAvFMeGzU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7466c61-66ba8ad9-442f-461f-ab9b-ad7a398e45ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e5f20bf51f6f2f964f1eeb5ea2536cf68eefcef415c89c7bed1c02c13fdf582
Date: Sun, 20 Mar 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647778884
