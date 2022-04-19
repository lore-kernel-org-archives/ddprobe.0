Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8F47A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 13:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650374458;
	h=To:Subject:From:Message-Id:Date;
	bh=vlWnMJeevXWdJ3gkGQRQc9h7TO0RE0cH26CKtjsAA/8=;
	b=f6cBUre6XhpVOmqm9YJ1gUz92Bm1/y8667ObskkoTHdruBirtP314cwTPU+wZSh2
	Do9ULHolV7H6yCnFoqB3q/z7B0NgdFJjgBNNoK1xmRp+Wb8yXLfcF6iO4a7/uagqT78
	vWvlZP1SQcHjnePyrLou2YXmxQGBka3ecTDRxZUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650374458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vlWnMJeevXWdJ3gkGQRQc9h7TO0RE0cH26CKtjsAA/8=;
	b=EsQbbb+Ym4uIvL2DEvMhTkhNWdqMYnjmH14A0hyJLw4Sv2/9Jv9Cn3wVtA27jd9I
	8RiOWmJ5/GJCA0eIeAiZ/HzrGP3OLU+gM8RmoSE+XxrPgh4Z7Gchc+aRKtzozoI1+7G
	m4rsT8p2Piq+uCiMS1wxjAb2N1u/oE7O5rorgmnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018041fbbbf6-35840c7a-5e54-4c26-a0f4-361650e0aa14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a4acabd6482646ba7702bdd3c95bc6c2236462299902179a922c69da447a958
Date: Tue, 19 Apr 2022 13:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650374458
