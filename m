Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7332F35
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 00:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646699784;
	h=To:Subject:From:Message-Id:Date;
	bh=Sq+A6SWSbxaQdxOkuDgugYmM2cXonxo5KbjlEUK69JI=;
	b=TimXaXSxA4d7uFRW6IoSX6DsHx+puT8QeC14AmnpH9sYAfK1D11NiFxOaICigxjb
	WOZgEvxb4KuW2bFgEID1VJ5lnrvHK0bbJ8osFpSWhQzQH7ScfeMkOZlVOiGYWMTSrJ+
	UI+0g26CXtp4nzh8aCT4pSEpoSY2N6yJzE/KP0kE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646699784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sq+A6SWSbxaQdxOkuDgugYmM2cXonxo5KbjlEUK69JI=;
	b=RoUq70h9tPqrRHu5ud4xHoH3aMy3inV/geeCfBomaT+PyTsJaXonliBaSowIy5EU
	Bny9hBkLBmovxjl8Iv9ZoDVvlmFbIoniaz2UJXk0FnGtgML9kPKTbwb+cnGQ/3/5CmZ
	n4mCfp0e4AVB+UdpBlpI+HEbpZVp8xd2xo88mCuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66f4aa25-1d7e011f-aad7-4651-acc2-b0d55ef79b17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea9fd94b62d64f30f4490c17ef2a6dd8f9dba3332670994289b89b1d3cadfefc
Date: Tue, 8 Mar 2022 00:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646699784
