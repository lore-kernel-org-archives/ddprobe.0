Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4186452
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646786485;
	h=To:Subject:From:Message-Id:Date;
	bh=o9maagsyR046VqyMnfKsKizDxhrZP8/nml+Q8DCl1z8=;
	b=ShQFaaATvXt1PbUo/VxRvAsFQc/98GI6L2de0NdeepZEWGMtccqmX3RTwDe+mNay
	7LWDeSS6pFpJv6fMupzB+kPMf00XOE+DYy6BjLGMZ4kLSBetnLRyv+6u25MTUWdo4m4
	62eDEKjq/dYZoAzJWOhQ/UAAALrzcVvAjHH9WHxE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646786485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o9maagsyR046VqyMnfKsKizDxhrZP8/nml+Q8DCl1z8=;
	b=MXaROTbPe35sJv3A8jE0IS9UJ3LQqNe57RWInHO1sko5uoVCyNn3eftTAADm860l
	PPfPxUY4oiM1YZV3nO1z3Zqsqoj+Atv8pA5WGHFNFG+MrQTQXC4jFo68rJOg4bY3rKu
	AwfsUFXMIZ9hHyVAWc+N3G8+k4q7t2rV/dyNcc/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c1f9a5e-d9e25f67-c0e1-44c9-b745-2b4c04f2fba2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34e1f7c9931a151169431c822b8f011ac819892d9f182b787a3bdd635d5f6ecc
Date: Wed, 9 Mar 2022 00:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646786484
