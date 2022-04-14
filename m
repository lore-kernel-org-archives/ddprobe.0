Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E37615A8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 01:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649901058;
	h=To:Subject:From:Message-Id:Date;
	bh=6OR1cPvhG7NAzpW0Hg8UYUhL1yJqs7SE4Fb4BjAKyHw=;
	b=ILjcNnvYfEZ+s6OacQVivcd6xZvAk8cfuZBGPTHHIEraEyXAjCk0MYELC5bDKogg
	EJea5Stv0TWjrSc1a9Wfoazf20l/5010HPv30a2+2k6lzvhWeLmYLuWHfCTeUckm8ll
	t0RigZPMmy3wbBXp9Tx3Aerg0LmHpZVtGN5J/JPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649901058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6OR1cPvhG7NAzpW0Hg8UYUhL1yJqs7SE4Fb4BjAKyHw=;
	b=IAecdcLRqae0aDB/tDDJyLgE/tJdK/mxH+WIFGWfDQa5hlccKZv5s1KcOXPzEP2r
	mefgWFyzURnrsbbojCNh3+i3mzeQQE6XKD7oeivrNrJcFmXawT9e24Llv0A01IK5Ars
	qiF7BjQjFpSnhgMEHS2EPtgD4yD5wFGNNu5AdCiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018025c438dc-da344e3e-509e-45e9-9447-956d8c98b0e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f7dbe960e7b09f7096e72fef62e6504af41058701a92e78afa7884951c3083b
Date: Thu, 14 Apr 2022 01:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649901058
