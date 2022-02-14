Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD357D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644877884;
	h=To:Subject:From:Message-Id:Date;
	bh=ru0feL4iYYNNffcf3tich2Q0cNxfzB+z/88ALszLrqw=;
	b=MMm0AyKTC3BcW/MRjN0/OKdPOxgMU/8boU2qSWMs0xahgKwLdfV5OxfpLgDUNUIG
	I82CN35idvPcGQoxA5AAlPep+X+hM3jRYpK4FktWDnt0RzkVNeeT2oPAtZwBvQjxC+N
	QyV40g+XXvzdMVd6q0MBmr46SyfvJL7ZSVYUQOPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644877884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ru0feL4iYYNNffcf3tich2Q0cNxfzB+z/88ALszLrqw=;
	b=Rayvrbok+OxSLJDXuYgW/7r0bTEDdJfQzt98rxHU1Jp2ky5uu2hQo/WL/jeYYtN+
	VKmC5vEY2a35aPo40Gzs1BO0HXZiIJ8gIFKd9SrZ7T/fNseANqsWorENRU0ZQgXjRls
	w7ZxHSUva7f439OwaMlzg2Iooldb0eioG/svx70Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa5cad86-7efa4ab7-0d0b-4264-ab8b-f4a244544ccd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 447f5974ba2299294e2f6a161322e89866ac8c272e4587e857ced76eac74b7ee
Date: Mon, 14 Feb 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644877884
