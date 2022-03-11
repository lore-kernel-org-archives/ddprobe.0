Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A127D7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646965585;
	h=To:Subject:From:Message-Id:Date;
	bh=MINnkm90MQl0URhMDpk27h9PACxogInmrKzIZDQhV1E=;
	b=JyuPM0Uf284jAOT4eTSPIGQvjltrLzXWah5uJB2VCE1puE6aSB5aUFWekL9QXUjz
	RzMQxF8WacDWBJSJHcjRIfKMm74+FWpjaJ8uLidE/KjJTv/EjhO5gn8lnIX3MKPG/fE
	v04z3trJ3CHL5jm1x7voZl+wWAZwjQDYVMnh6igM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646965585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MINnkm90MQl0URhMDpk27h9PACxogInmrKzIZDQhV1E=;
	b=XWMMdKAKlhZ/MwapfZOKGlBEBl1HZEH1tOBRu5q30ZS5OOgn0yBtSVPyUcTp+XbN
	/SNQ6G1vP/OkD5i6rk26UTVPuuM64BsRkv+edX0WQhrBHKZQZJz0fvVd/cZzzKJULoR
	BbTTSyVPZdWdH1o0/85FGkCaK97/mWb/S+Zb40o0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76cc7363-b73f3479-841b-4569-a576-5d25515dfc36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 432237505b82170e0a16685e8b82e22e419c50dac9126d9522eaf178d1d9068f
Date: Fri, 11 Mar 2022 02:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646965584
