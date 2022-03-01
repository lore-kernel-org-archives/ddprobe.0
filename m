Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC05182
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646102184;
	h=To:Subject:From:Message-Id:Date;
	bh=kYxNOlRBP62VZbkpRnSvp0kGEs+lLkBJclBbifZhQCY=;
	b=LEYpdztFx98jisiZNYeeBG1bjcPmljTMd3hAvnds4PVOIRDNoKociXaNDZmBsdrk
	VlHgh7Gi40FYsd6jmYaxI5CoaQryBQIUe2CNdzbqZk2upxSiUPXLv/yI0j0Jq5qGY4h
	J0AelgxoYmQSCX3pkCD6X1Ae7F5T7/tsXX70n9Ok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646102184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kYxNOlRBP62VZbkpRnSvp0kGEs+lLkBJclBbifZhQCY=;
	b=WaCXz9gE5q1oQmkjENLAEAjnu65kfvQPtprHRZE5NWMKkenpgf+RD9UezOClbkTJ
	wa3xgEuUZ143q3ZQGFuZhJk533dsxhGWGMGDIDOBTzCKpYDA0j4hg7KaaEUQTix8xL1
	mau1kWljZZOhJ5/RlKzCaz0XVIOWS8vx0U85ofso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4356033a-49ad86fa-5944-47de-9781-3c2a89a90252-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1d2ae887c876a0a18c84286a71c2829cabd27a26626413a624b5b5bbd90b8be
Date: Tue, 1 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646102184
