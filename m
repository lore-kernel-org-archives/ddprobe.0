Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B7128FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645817785;
	h=To:Subject:From:Message-Id:Date;
	bh=963rHGIxyBxyFbWnL9KM2uPlYS6weHPxMyrnvFQ3zVQ=;
	b=HLCROCk56Qcktx+YW1URMCVaBmC94u6dTzddMEdGbuJYfv5lhAe9C7bTMt/l5GUx
	UpkVNyS9nC/PdJjr2F+M7CVOrZLx/KqtZeBQZBEgUxgU4aszOxypUKZ+FudKRhsy2cX
	2LfQnQcg/W1I2up6oe16Z9QbGaqHaln7Z2MTMSe0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645817785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=963rHGIxyBxyFbWnL9KM2uPlYS6weHPxMyrnvFQ3zVQ=;
	b=PICaxwgNsWmA8rIHXcRL333ErvKGPK2Plg5unTEfyIXoTTr7mTqqrzMd3JFY0GW1
	jyU0vdsxd2zChsQkXFPDUZC+zmoItWTHjjOqnVN5K7L49CvpqRy7yWOZqRtbWrZyk0R
	VRDR1cHqdtgmKePppufrIf3yo7p4VuOM0Qbtleek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32626a0d-29ea9f6b-040c-4e5b-a1e4-3533a85cbb6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b18212e54f0df77b32b036990f8dc22e2e7e52dbf0ca2b9f3d1e897d59626dd4
Date: Fri, 25 Feb 2022 19:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645817784
