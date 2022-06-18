Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAFF7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 02:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655520239;
	h=To:Subject:From:Message-Id:Date;
	bh=/lbuDa495ZrXaBfteMBCoaxsKnEyHc8M0hrYuAWjljU=;
	b=IzlaO0C/g7w5UCtILrQDs9m9+XqlkOsaSzl/yLF9jI15UJcqr6+n9i4yjuZ3BWrM
	D1libNtIX2tFfvniUGiRjjve6k4FbHIKqkt/27HDZd4S/YpGbg3wLjA0assvzr+SJ/t
	UAqZh4uYKhIbPRoyNRCHDzNT2QhkM+nGFEPojKiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655520239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/lbuDa495ZrXaBfteMBCoaxsKnEyHc8M0hrYuAWjljU=;
	b=cpAu+z8o+Zh1kWxxTHNFzkuP9zX4LpnLYDzMkn/O43aeSMRV5e5VVbCHsEdSMXlL
	wA5YIHsJVv8NN04tZhXgTpW1YMY5G5DcFQ1CROYofeKmc4UaUC4KZb0ay+pCFYvjmez
	j0IzJ1nziuKIQxM5Djhon3tPzkOQFhsD9ifiS5rU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018174b21e71-64022322-1d14-4200-9a11-0a76d8249768-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 947a12c46b1cc45ae01cb75c5259e0664060cb8289664ba63538c66cec16a0ce
Date: Sat, 18 Jun 2022 02:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655520239
