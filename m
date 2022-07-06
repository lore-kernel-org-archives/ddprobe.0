Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7007C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 08:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657097212;
	h=To:Subject:From:Message-Id:Date;
	bh=mNAnhuAAO5STjpUAV2/vK3nKV1cpg2IYMIFPESjjjzE=;
	b=c/TFP3z8i+wsH1CgP/RMEZjC24XdCtNSnksB61Lyi6fFA92Z4vudrX/5Lprpr8N4
	4TtiR0YwbSpqb8qF5cIOhed6cDZo4BtjSAENdwQ4LMVkkQBMCA8R7Or9fZLqRT+x0F+
	baHnRSvpUQ3fyoWQqZta+atqEXgmdRwun+MhVKng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657097212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mNAnhuAAO5STjpUAV2/vK3nKV1cpg2IYMIFPESjjjzE=;
	b=hAqPrGICakvGN4EotxlwRRu8ChdtMIwwuD8wre7bfluyzewhvc4neMJsKMhrBO8R
	YBA7P92/bvRz+Rej7pg08zFkVvH8gpQ4FIjuUz2IqvSuWZl0i7QXTsPk4FPbM1ZYZ4H
	rMegxYgE5LiCQQSHus3mubhmCri4NPlz1Ip8GmkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2b0d181-3f7991f4-e534-4d38-8f19-2777f04daad9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 463fa32075a9e9a57b73a5a76eda6b1b239ae4e35642c09eb21eb97e84c32b1b
Date: Wed, 6 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657097212
