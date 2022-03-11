Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821D833E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 16:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647015685;
	h=To:Subject:From:Message-Id:Date;
	bh=K4RDxOO+IQF6DOa5+b5kxd7izLizRydtF9NsNV1QpV0=;
	b=CBwjMbUOiAocIB4hOK68ZBu4iGBWzr+gwCvfd5uYfiZz9JtmGxTP1fW9VteDYVTu
	+y+n2w0w7wRwcpk13FwaoALuKTPqev4gqDbkbUw/p2wKv1Mjg6SxduWNU2Ue46WmhBj
	bR9drWr8p5Ly3E9Qz+6J02xC+jaYX6oOdderTzeU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647015685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K4RDxOO+IQF6DOa5+b5kxd7izLizRydtF9NsNV1QpV0=;
	b=Yp4qDYlq6UP8wgjGhsJf5lonDPZ73aawyV2wKinpnQCNbEZG9vk2FN4yNCOFm60K
	OJi7X4vK4bXnq4U+iUGUKZWy7BEvH/X+Qq03u4UKRqBLldKSxc19GLF4+GEb875K3tn
	fNzX/aNlWEd55BHmHXbcWKp2XEETLrNCzkuqoWGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79c8eb2a-323d7022-8b1c-45fe-af8b-818108ad7ec2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f039aa09a278573801c61ab45a65ea7ad3a39f432264c18b10e8943d86f37a7f
Date: Fri, 11 Mar 2022 16:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647015684
