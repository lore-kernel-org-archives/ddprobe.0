Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C2FEA9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659749452;
	h=To:Subject:From:Message-Id:Date;
	bh=CdzZCt/3tX56VfsvJoSaMbLhU8jIbTDzMxVfBev9fdM=;
	b=fry4QSbf34APPnkWCvvoOI6YCWgWyyExXvW7TDhIlnZOoB1737Ayd7/BIGJ5zSdF
	lEluQgVovKj2v9byHWUQLfR5QQ3L2iZhjuFSWMaTDFOXXJJ5DkqWj2YTm65efrC4pju
	w5aqkY5ECUOzhrAaTdFVzxSZtl1Z2AZ4fMxG5p7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659749452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CdzZCt/3tX56VfsvJoSaMbLhU8jIbTDzMxVfBev9fdM=;
	b=gHCUMLVHjJ0pL6VGIctQ91RyClYehpp+njkDoqW3e8iiPohQNw1QVpkvCDmiTf0y
	8n9FruxHw+GM9K4Ve54AlUv11s1rkf9FFuR1PO4Bewj7zMhVK7sWudJhEo9thtsm1Xu
	7Bq0cHr7RPqe2NGLsQJ3BpA3uLLdP5iSTIEYYU+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018270c6cb8c-af278b5e-3bcb-4e9d-93c1-6958fafb8bcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e309bd6ec94fdf8a845534d32ed8d129e31c5f32303a3e9821041ddc351ea8ba
Date: Sat, 6 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659749452
