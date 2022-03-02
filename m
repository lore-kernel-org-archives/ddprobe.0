Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE386136
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646259085;
	h=To:Subject:From:Message-Id:Date;
	bh=SWZiwoaWNEQDWMaDdJuWO6qBAXglz49F1SPzYiNJoMI=;
	b=aNlfWSbZYuc6AYIfoSVn+yfetDwrCKP9tILmYhUSJGQG38jQMRUN4ER1kjbjamXu
	fomHmzvLweayXq7j6KqgEnsWH9t/eK4vIl7/DT7Rlf0Ow4PBvkHAUmkp+SY+yXW0e+S
	WnmS9YQyPY8IMjMMgWCmrt6+bGXCoOamfnqHlmMs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646259085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SWZiwoaWNEQDWMaDdJuWO6qBAXglz49F1SPzYiNJoMI=;
	b=EQxxAqOfhD4LAxY8DGK5UCa5f+xgbL58Oc48q9O9YHXrK6fIchX9e4A1gE0FQWR2
	cV5AEXxLlUNUrj475faQD0COMDOce6Ec1d8s6ZE1TQgqpwzkwMhLzLUK+wbg+FhvWwI
	nWBhh7PPWhv8RpHrJsWw1MwZDALAY8EC+A5F2PCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4cb01e46-d47f9f37-35b0-4328-8b53-6d52964ea475-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e163297a2b41aac1d194499aebd780074c27a52621de664e92b594aad62eb194
Date: Wed, 2 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646259084
