Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8414648CD
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646038585;
	h=To:Subject:From:Message-Id:Date;
	bh=HO2AgQ+KYLnON2g4HW/cRU0t+lPbiAUUD9S/A7nhvFo=;
	b=hdzrR9QUoUZ9D22mc9xXb8cn9nDIKV780jYc7w268qdmEssshn/7vNmVjksAbqB2
	9E84M/3/ESEi0Mj0l3jMzJDPhEeklA4vbOXatO/2uzHzYyFwxirB4h3mb5r4yVdCFQu
	GbNUBUJn3vWYPuih7RoF6OeFwamhtQtMG8VZhpog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646038585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HO2AgQ+KYLnON2g4HW/cRU0t+lPbiAUUD9S/A7nhvFo=;
	b=LQGkq/u+HfsPb38GDTcj0mQ7N3ER3+yzPNo5sYI/0S1adlIaOTKNF9ns8djypPRn
	SMAwKFjR1OXBGrFR3MzAc+0hzJ3HzVx42NFG5z5x86gc6jCo9IC/xqKGyM/XTc7cGc8
	mzPBW5LDG5mJSEH+/oqHILrXz4PQ9exl7SfSwgSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f8b8e42-9d125562-e545-453a-abd8-370c4b99d379-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e402ef7c0634b8e905c0edf2cb0c295a1d64c3fd4ebc41a57fa957a0976a4cd
Date: Mon, 28 Feb 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646038584
