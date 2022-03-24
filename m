Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF8E7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 11:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648122178;
	h=To:Subject:From:Message-Id:Date;
	bh=C7lQTCN09ymUACsUESxFns6RbzQAR+V//LDgW3s8+0c=;
	b=L3DU9bebZXb7Wl+kDXJ7z4uSUc+JOakz0pU+TpCF7qWa2QOUAla3GFAFgM8j+nJ4
	9SEU11BTCRbHqqJy2+B0T1B13B852BjlG/GEg48nWzbK3TdSArlBM7pCW4nbHh/j5Tk
	pgWhpL4L9w9bWj2HMfCm/Ots9Vb0mU0KMEi4TyhU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648122178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C7lQTCN09ymUACsUESxFns6RbzQAR+V//LDgW3s8+0c=;
	b=PrOYMZhPexkJBLmXDUoLuKf0wXy8ZPVwTqBPUk5dxx9792fC3+DXDSQWNSuIEpzy
	BU7duYe5gyq2kmvIRoLt5pH5pW4EETGx5Y3I3R/FtwqYjJIxPxyDwFQq6gxSbYi7hgs
	v2RhR7maA+WkARH0vV93BkJvP1r3BjexCvXSKlRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbbbcab16-a8e628ba-5a89-45a6-a926-501e6846f857-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23ce921d4deb991ae9c5f7022cbfd1b27d39dc910327a33ff16f1dd56389ec9f
Date: Thu, 24 Mar 2022 11:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648122178
