Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1851365
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 14:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651244278;
	h=To:Subject:From:Message-Id:Date;
	bh=xN3zns5f09e1LmwjoMWCjCF3d54gyK6ByVDKPt/ZqG0=;
	b=N0JofqyX3Ihaq5XThGumynxwE9EfO4XEVcT0frXgn9njNrBNoaWSOTGgAZaYxjf0
	utaEfGL9nWNJlADoPQE5vDmAiydI27bg/fmYK9pfKE89d72SLhk2qFdbndBgMj465vn
	VA+h9XUsYtwt+dtV67RUxfLCjDVrm1w+mUAG/T3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651244278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xN3zns5f09e1LmwjoMWCjCF3d54gyK6ByVDKPt/ZqG0=;
	b=B9SKdpmq/Nt/YfcwKAh1mATUIUaHG+jqGcYhJaY+naJ1oIQGUtAfjIY2TzsBm5Qr
	DCABCKyU6xd4xmgoXHML/DUecR0wt1H4Xuqa3DLOvDcN7Gn0R//ZFhJ6wZggcKg4F/y
	GheMoCiaqKH764N7hi3mfZNDHn6Ij5Cc6qyoppcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018075d42212-49743153-9d6e-4b99-a3cb-dd2952b8d71e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d23dc9384a31991ceab6a0757051eee500f51d3751e22c1a1ec4298d7d24426c
Date: Fri, 29 Apr 2022 14:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651244278
