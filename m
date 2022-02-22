Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670ED2F5C
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645560984;
	h=To:Subject:From:Message-Id:Date;
	bh=XUAaaNtem8sriZyi1dvrSTplzX0grOsD7EvU4v9Lv6k=;
	b=Ts8mAlM+mJutYuFzCuSlkBJL8uZrq3RWUgbyYQfpUdNd4AzGxaGhnmVCqfl+PU4r
	Bb8W1Phv8vVHNCIl9liBDWs4GxLaW2rLJhn68ufa90nOA1d5fBKQScPb0RP7R3o8Vin
	LkrHzrYUawejcCA/dfFPASq2f7mZsvVRG9AqyyK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645560984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XUAaaNtem8sriZyi1dvrSTplzX0grOsD7EvU4v9Lv6k=;
	b=fxDHKfHfeHplPxfi73wVsrZLhaWSFqABt75nxbhlDg2d8uL8yuQFFIZZBCotgGHW
	dtdS+/1+X6FkyTcawR5jU9RKrAG8SKfM1puLByZI6vV6AcC1pE/8SbQXevFO2+9tNmp
	8rGd0ndv705b2eKICtJQoP2FL+WR7DXLgieIQ+Rc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2313f4c3-c492cfe0-2df9-4f03-bcdc-14611b12cc8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d500389b56844dcabe1899d18b24aa8d34b7a09e1c9dc1e272b8f7129762d667
Date: Tue, 22 Feb 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645560984
