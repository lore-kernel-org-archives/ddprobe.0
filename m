Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67F77A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645781185;
	h=To:Subject:From:Message-Id:Date;
	bh=3gOBWYcFJ5RsepPdZxGs8jFKLdNQMGS4W75rFRD5PSs=;
	b=gpw1Fw2tKYQqTBQr2T8LKJ1IqhONl2xPEHTsyty+dl27dML7KtsewhOsYt507JKu
	6s38Q2bqURa1ZFmQqApbahfEZn48xdt4ERvsaWebcCdMSBuQmEhFvFKr86uqSl5BeN3
	dW/u454SDvJVDkXuii/ArVktKaxJ+Mj/Q2W9XxlA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645781185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3gOBWYcFJ5RsepPdZxGs8jFKLdNQMGS4W75rFRD5PSs=;
	b=I94jb6UKZPvbkZffssGid3CgrPGqoiCm06c6NhrJw9JtvbZywnUpLQPNwYTYVT8/
	hXpdRMOUhJgoTa0BY04iMFbi0SXUqnTi/RtS6pqYvrX4smvM/DU/NZ9YoM9QEBm/WW4
	xdr4nDYjqtiCKF6dJjMJ1JFLRQOmNHArTKLOXp+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3033f12d-80f0dbe6-34b6-4789-baa4-0cc051398676-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa3d758e3be3b8d3fde6d6d7c53a25faada47dba68437dc5020d28bf6e937e8e
Date: Fri, 25 Feb 2022 09:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645781184
