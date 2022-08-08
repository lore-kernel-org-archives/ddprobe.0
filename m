Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA7023BB
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659942653;
	h=To:Subject:From:Message-Id:Date;
	bh=oRZe9vuC5yM3Qyf2qkZ8I686+FXKFZ+r4tOmanqdAto=;
	b=YRmL9j/6zTE176xTzUTe1USHi6ezhuG3QQW9dKDxY/qzAnJLm5A7xndRvOxRPgaf
	D3oFSaIVLg7rrnP6LGuuWybu80dQpOCcBBRrR6HX/eqtoSlKiz0HLT51XktlV4dgtEG
	6ubmhL9M70yitEzohozPHqeZ64tR6jY9RgHyf7jM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659942653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oRZe9vuC5yM3Qyf2qkZ8I686+FXKFZ+r4tOmanqdAto=;
	b=ONrPQ4/RrGBviFY4jTnzxbCGcUVfOyEz0CAS5GLgYrJ/CmCNxU53RICRuw9u6IR0
	rLuPef/eckfS15Q6Bv5xcieUGqDbfT02qBEzzLsQu13fQlO1qpzpGdH+BG6ktD5wmyo
	Vj0vRa7mHIc18VqktnXho3r3WSkVNNKXKXbJ4X28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827c4aca87-46bf6482-0d66-4cf1-aca7-4238e6740b27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5b3cbfcf5007c1f61b92bfcd5d685c09df17e909c27d5b913099c8a5b28c96a
Date: Mon, 8 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659942652
