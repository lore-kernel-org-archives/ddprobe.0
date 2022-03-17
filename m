Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D192F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647482484;
	h=To:Subject:From:Message-Id:Date;
	bh=C9Umzay9X0jLEZAfGKjJ5QQ9m8AwASmIVViddKvwKtw=;
	b=cS3KYNTvO/Z7Ax2RGFTANY+7hO9eG5bbtA1A1WORa4qx3Z2qvSdAZDeSHfk3OP+s
	ws36IqXx6Ij2nAjd+BJfQQvJ3kW86+wRn8wpHsixYJcmlY7mh+BCR6zHNdvLSYpfh+S
	MT9bWAr2YrcJxavnpcRPCbtvbcwUvycex0YZnRJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647482484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C9Umzay9X0jLEZAfGKjJ5QQ9m8AwASmIVViddKvwKtw=;
	b=k/lTRgixlgNd8kuDSn0pt6IjkSXTmRK+5iVToXRn1MMvugAljKeeQq09NF7F1xgW
	ftFR4GouTofz+K8NSdIWGcDxH0e6iTOzfjuRXmsPZj/HChOqZKo+5dnDzBn+c3fDKqO
	G1Yfgmu0tYqBZNgQUuuy3l8gvywoXqiJ2PEQ7L/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f959bb82c-07b0c91d-5bb5-4937-a6d8-a78f6bff1dba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb2c270dac5bc24bf881766305dccac50d2dc646e3aa6a1a89615a812be7e120
Date: Thu, 17 Mar 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647482484
