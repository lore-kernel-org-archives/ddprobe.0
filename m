Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AFF66A2
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647991585;
	h=To:Subject:From:Message-Id:Date;
	bh=sV0RKKCcRy/DXL4tj1tM2AJ1Fzb5DAUWotwwoiyyTJU=;
	b=g+OS7djRE6ToRJOhFydUrWrkQhZU9iLOauEorjY7ar+MlXXPY60FCWRkS3Pd00bq
	9RJptxu6yDnhUuXT2RnUsoLgENTvjeU95iYNHnUh0TAYWOGknw6BB0pw38UkhzajfLC
	FCg1U4awXPElPsXXKtOkE96GHY0p/gwb2odAO7UI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647991585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sV0RKKCcRy/DXL4tj1tM2AJ1Fzb5DAUWotwwoiyyTJU=;
	b=ZS7rKBIE2RJhRjBU2ju8C/He5lyZaRYnHE0gkzCY59tFuHc7UOd8AgAebI9vSZHw
	TUul/qgwMRea9HgHKY33bSsxSavTs9VoL5QhhW+egwk49kVdmGHyIfj6nj8SwglPOB/
	kLzVKI7MwTY99GzlCDiNCNhmhVlq/gqb7pcdmG+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3f3f806-5176f152-02de-4487-9228-bf98afba297b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26859d9998fd94372a6deebcb67f337d5c90dc4650565f04b451d3d9bc5bef00
Date: Tue, 22 Mar 2022 23:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647991584
