Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184FB7B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 17:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649870098;
	h=To:Subject:From:Message-Id:Date;
	bh=QKVxmFat1pTXOTU9j5xNoVw4osA5kj/CXMhlvdOG29M=;
	b=fSxXruzp+XME9nD1BzAA97lED6be0GK62cxwHQoslZNLlzvJpHQvn2Hl16d6G48/
	ufN87N0o5uVYcOPv+rV9dEiM41nQbP8GZtQ0NdA2NnI7BTudhLiRVRgpBEkVGN3PpYq
	kumzv09bBPSTIJmrblobtc6kRkQcS4v+WrMDfiSw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649870098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QKVxmFat1pTXOTU9j5xNoVw4osA5kj/CXMhlvdOG29M=;
	b=A594INOqRaQCvDOtnvWLSZG7zD10FVNFjZUK+LQfSsWuPK72Fq9h8RsKz/BHg2Zp
	Gt9EEtvVPByzccYoGU+1j/toV9vB7iz0UXgkzaU4GOBdcuTzeF6+SSdnFpRJY3qxVv+
	mRnh3FFQH7P7lnK4cnl/QSkhB/FQQEc9lp++rFpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018023ebcfe4-88542efd-8a9c-486f-8bb1-46967f12d541-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 852b95cf8d19155777fae2834e22eb0b7c809a2261ba8b104cb65d31f8c6f199
Date: Wed, 13 Apr 2022 17:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649870098
