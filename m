Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F7C258E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647037884;
	h=To:Subject:From:Message-Id:Date;
	bh=hHbFElt3bDIcR4vDZhZAFRMlepkyn1IE7aIwQlvP1A4=;
	b=RJ3aZ6tngN/eLu+ztzOhA0to7dTQRFOEJE9fK/1v2Ga7DW4j08jwzXC3n76ffwqZ
	HakPbfYNTXJiWG9NNLjKrFKBN4pzHVTOTegdaQY7byJOf5R+UjsDAnLr8GZbO+OPduY
	7G4yrDjg0qTpwL8jgxUiQpkr8ChYdNBZ66gViZgE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647037884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hHbFElt3bDIcR4vDZhZAFRMlepkyn1IE7aIwQlvP1A4=;
	b=A9KH2B2YYA6Lx+B6t1NnDg+D+yVCP54LkH4NZjD6AnFs5vb7hLBSkSvk8wTkRRth
	X4hTu6Ng+oF7SJpFdOjdYbt5ajpqvuhm0DQbWuw/3NaBIf+punFYD9b6yqMNuwyXi21
	1Nng8jomH22Zt3ai78oYvIcsSGOb3Rhn8+JrKREo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b1ba91e-d01f37e4-27d9-4c09-983f-a06210042423-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1481ca7c3837e67422f9bd201dd189ac10b8bbb63e8c5962c0340b1749104907
Date: Fri, 11 Mar 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647037884
