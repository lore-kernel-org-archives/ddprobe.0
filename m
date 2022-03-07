Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E5A10EE
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646641884;
	h=To:Subject:From:Message-Id:Date;
	bh=7R9vAlOuGHqTn8n4ycFn8l9JG87CwA7GClQp73KMeME=;
	b=SIFRjm5Qr5U97o+g1DEBm+dvKazmTo2cyUh6FQQF+hlDUaH6wuIGOKvuGKemheS2
	fcprwyqwFfmALSO0cxZ8Y70HqBMUBNlsbh8+7ySRkcd4GK+AOkmIj44wvIubI3Re2ux
	B6q0BvIiQj3ZSejS+ZXwJUDtH9XJlo8XNHxtovlA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646641884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7R9vAlOuGHqTn8n4ycFn8l9JG87CwA7GClQp73KMeME=;
	b=OIsbnj1+eWRcqJpuBQXb9JoJxVxxzdC3QkN8xByMF5sJ9eQDC4gy2gyIpm3V6Ofg
	HVW54kl6JROKMgB91cZuGEfDVvSKR5je5U5uYYZtS4gsrnomXtz5f6PZYW4wwQfrA9l
	J+1D0bqwwpQbOdh9DjbU1u1nl6onj01XcBkc7i/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f63812e79-68900ac1-332b-4668-8044-9c2b0c503916-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37dd20a41b3e21397e56498ef7ea03a6012b0fea482693c72e73ef4cfa2ff9c1
Date: Mon, 7 Mar 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646641884
