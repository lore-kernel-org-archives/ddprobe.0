Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DCC17C4
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659267053;
	h=To:Subject:From:Message-Id:Date;
	bh=/GaQzZG5S6O7EO6GNcXfj7T82S931S7jzf9sQiOrMfE=;
	b=kkJr7ZwClnKUdonGzP8rpbraoZ49LFGTUyA8LB7fFQ7RZ123+8uJIl+zoBVFyANu
	66lay8Ui8+1TWsD/SLTpxfnspTtJG8Gimz/mb8EeNjHpcJ2IpHtVXZYVS4UfEHxaVkr
	C/dMlp1qSLypvaRQaWMh1cSMchcCcry+ybqNSrYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659267053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/GaQzZG5S6O7EO6GNcXfj7T82S931S7jzf9sQiOrMfE=;
	b=c5ci51aYZTC7ZSwiqGbmbKQqGRPZ9OgSVH7DRsfvHWx1dMdnQn/329jsehX7pocF
	Av79iAquwPADiBLjsYzjijDjp44FisZzmYBzmgGPvN1Z61mcv3ytfXtUcCRrNd1wSSO
	+UdqB/JSRtumtSzSad8VXxkpcZDyiPsrOQM9pXT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825405f476-83daf5f6-b855-47ab-a06c-2ba17c8600e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d63c74fe0b6812dcb5dd99b433b35330814a5f17b6e4b0fa96981803ed3957e9
Date: Sun, 31 Jul 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659267052
