Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288697E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 05:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658555812;
	h=To:Subject:From:Message-Id:Date;
	bh=BUm5dh1Cl6uzDNzKva94NQrbQ9SRNzYVn076IibmYek=;
	b=DwWEw6qEz+Q6QdgpIHZxy44laGHWcThUPVT5D7AbAXQKshiDq5vq+Xd8m/qrzEaT
	+gokFH4w6gup/63wTMEYx4/9Ime4zJ6lutiRLuydA5uT13xf2k9DuXwBBstEGE2l/6Q
	KYcDV2E3wTCRYAUj5TWJGhne7icNo8e3yxv9OCAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658555812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BUm5dh1Cl6uzDNzKva94NQrbQ9SRNzYVn076IibmYek=;
	b=SL8UE+blHDsqRkNOPZ3XVsLMkOkFGWXWSCIZIYIYN5fZVIkeDnY3SAVWoxBhSakV
	fVpW3Uro5MEObw0gBhJHPGfEeXingcqTE1ZUnRU1IbHFkO9f9x1sMFDutQL1aEnk/Rj
	GHy5rMkpTjhf5k4uRFfvIC1yr+sBJ4mD8IPccSVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018229a14a04-33c7c2bd-e642-439b-9954-cc0b2718376b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c11a3d0090ff3f4b4197956b46a8f724b1a5890b3701ce9bccc610586fd443d
Date: Sat, 23 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658555812
