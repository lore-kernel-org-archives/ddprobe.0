Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1970E181
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646110885;
	h=To:Subject:From:Message-Id:Date;
	bh=zYoUJGqvegfpRvqvt4AHXv4Zeog2WDVHOZFTVTKkgOM=;
	b=AvSgN+fxy4VmFVxTtgbdLKcGutfY5CG7qFjCEi5b8DPt0zv8fDuFlHwnaBnsHMz5
	zBKiryHcHqUnWKYT4TasuHipdNV0MJcXZFVhr17ogw/R8cpIU2OSRMQMtnj1VQNCr5R
	HKXaldixMKWUkA6okExTrwZrAq/ESZTI4DXS+NVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646110885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zYoUJGqvegfpRvqvt4AHXv4Zeog2WDVHOZFTVTKkgOM=;
	b=PUiAireguogLXRCBgFUKKhgobjdrI79aEEBZzRB3VpXbb7rM0kgbDc019PtlR4rf
	EtH6UBocPbvkyW/8kU+eRhOcUJ3EdQCDRDWgiUDI9VcmIpQoTQzm6+ObEtItK6uToUR
	Ed6elo8QBBoKLJx6WLTcOoa9/A4KXBepQieZ/1UQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f43dac3d1-e4ab3390-d2d8-4e47-9254-f5929ab886d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7af10828e8394f51434cc4e9f1a08e46f4ad0da15709987f06da51da0de46dcf
Date: Tue, 1 Mar 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646110884
