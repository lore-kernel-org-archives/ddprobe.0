Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81082EB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644879985;
	h=To:Subject:From:Message-Id:Date;
	bh=2S8QS2h/sowSRBnZU/7hMlJntQspps9cK0WAuKzAGVg=;
	b=cWw8i2pv51DXv8xOf3GScrJIajupModtwqvOGaqAXq3IrFEjJzplic5yOtUKw1hX
	YS3c1yxz4zB2oXNUPaCnSV5XAmFkl2ajmPP6PPgtE5XhJqMYtScCb+mYu5QYYup6/nd
	2OBK6gydasGhMptyGwCMO710pXMNizVe95fze8fc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644879985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2S8QS2h/sowSRBnZU/7hMlJntQspps9cK0WAuKzAGVg=;
	b=TFy+WmEpC5U8kEGXWpDQOiKWwuc2P7uT00mkPfa7bEWKQMPqdRVv5iM9Wb/lUqaI
	fhRlpqN7r7qtKf7YAGFsPbgXTFNqt6ThyTB+2RsBrnzyic0ceS+1VIYw6S4fuKLyXzK
	ROoiuWJLUHxBwBfP+CToaS6ZoTGMNJndwEKThmGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa7cb904-e91d2ccc-205e-465d-a709-410280af8eed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88f3de43cf2a88c5f967ff49fdc859b9e80348cc63b33460d5c3b136b647d7e4
Date: Mon, 14 Feb 2022 23:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644879984
