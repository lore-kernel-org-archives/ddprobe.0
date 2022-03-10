Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FDA7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646917584;
	h=To:Subject:From:Message-Id:Date;
	bh=WzpoafyKBNiPHirD8Jh9oeC7oeQtiLlAMoa34FfV5Nk=;
	b=k89hmcEN9soLx5ot0NH+ELJKnfsowNNSgGDK2Mh2Ijl8RXr7VCm5vXL+t8qs4u3e
	p6SXrmvsKJb2/m8FNt2fCTmJg4MDK9QyejXshW3ovNvAqM8D+FLmQA84KAiSfAw4D/k
	DPuDXvNlXYkyewYOGVt4RQ5pDznMR6EopZlAGyUQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646917584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WzpoafyKBNiPHirD8Jh9oeC7oeQtiLlAMoa34FfV5Nk=;
	b=Vr6aqWtHVNZFs+jF++2anTomunltsqLDyAlUbm7OB0gpiQmMGKZ9SGAbPw3A77Ag
	RnE6IaRB28yGNKWDi7vh4lXFZg6Sf37PGY8F85UC8vyc2u/0TEH03aN3AKn/ECEmhri
	aCmoYzHlaoRnOeHCd5FR5P2A13Oz6YEWajheCOuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73f0079b-ad31bfd8-861a-4b93-acc1-226db38c1058-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdf05689c175acd54fab9ac84357cde36ba9295ec7b096b4dd85b4555232d242
Date: Thu, 10 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646917584
