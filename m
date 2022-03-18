Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D29B5137
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647639984;
	h=To:Subject:From:Message-Id:Date;
	bh=eEGq9/mx4TRWrcDaaDOsvz/gJ2lYF3lKFaUqxcntOg0=;
	b=FOkGWMrAMwe33ESvztIAh1jE/ne9cUtEhRlotAcIq2UDDeRQtwrLusfWUqfeRK1y
	lfJcprTVYZIEqt3SDoqzqo3fUBeWvhxgJI9IjW88RS3ZjAK20CIawb+v0ZZfyStuh4m
	8a1JDHswrNrZdsURxUMfRIVcVDVBr6DL2GKVJp3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647639984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eEGq9/mx4TRWrcDaaDOsvz/gJ2lYF3lKFaUqxcntOg0=;
	b=kWxRTseK8f79Z1B0E+4OObAQqfhzVLmN/G0UI2TKIBm+zkn52vnbNY0glp3OvSZO
	FtJWC3bfaBVkZ2UQ+QBLk8gwT4zbuql+k7DwZx55JeqyCvh420p2xYnPD8hnWyh9vxa
	oDuGN3+oGCIclB1VjuWoda081uWDgb2ML5KXyxEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9efefa8f-fce44042-113d-4692-a6d4-7392d4b258b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0af24c60bb438cd86ca9a725f707a9d0ab10a7b2e683123284dcd7ac1ad5a9fa
Date: Fri, 18 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647639984
