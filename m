Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE3633C2
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 23:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648596478;
	h=To:Subject:From:Message-Id:Date;
	bh=y0yyj61mmMgNgKwMDf/rYmaVj637uVgnO1W7jSOJ6t4=;
	b=cfojam2Q9mFpPdywMVEF5495mOdqyU13SouIUYuKCsWrLdSottSFLmVdW3ExNOAd
	tfJJqnLlDdSDK58ybzQNN/qFeMupnvEvCnrMiWNIEtl7YRsRkKKOSOAMXYO7mRecaJB
	ebj9KVbwisrLMs3JPRE38xxk0nlkABvO53hzUazc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648596478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y0yyj61mmMgNgKwMDf/rYmaVj637uVgnO1W7jSOJ6t4=;
	b=KoboCeVywehOiHHU4hMy0Y36EpA9WkaJt+DFWsiFstFBmrYZN3eg7s8J8u8y4ai4
	Fr5gRcwqFISzH7LtJcejOK7R25qr9lX7ChlAV7Wd24/DyV/pSjvXxduqttZN4GtOwFc
	VdZ4ZxJhTH9i7SY5UX6A5pnFRMxRbqmm7K5N+kno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd801e9c6-fc594b97-259b-4a68-b13d-77ce92031471-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eec4eba6df1c8eee1f8e5d6e89a57d491dfbe9e94c2f61398f406c43b2ed0fc7
Date: Tue, 29 Mar 2022 23:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648596478
