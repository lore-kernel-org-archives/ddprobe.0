Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701F77C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 14:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654872479;
	h=To:Subject:From:Message-Id:Date;
	bh=ivWjG/uoCATuYwd6EzBV/ayMvSOr4rUeDKVL9xMQDh8=;
	b=BxEPf8/CidF7d4onI9nhM1kgypuZTnh+IGox05unSJ5hDDj/GtyFXKw8SSJvAr0I
	N5To1jEEhMXOTkSmUgwAPTjHyE+6y3O5FwSnq9AJCWXdC+tTEWd/oE27UMXvEi8kh1+
	HQ40l9RoKWoRQV0kq+kCR+tKgOTXZ/SIHwAQIwiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654872479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ivWjG/uoCATuYwd6EzBV/ayMvSOr4rUeDKVL9xMQDh8=;
	b=WhljvIRdr+8K8pVg4oxd/FDqcMoiDqMTLhjTpmJdsLtmXYiedRzMYo3P/Imz7tki
	DumUeTZQ3wwkRumpLw9Jpf+3uzFa8tnu9QJpi3gNdl3KPoMnMO5/MHFm2//bEatq49J
	ZIebiV+ftFdPZTCuomDlxrNh2uxOSnOl0CBPoq9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e16164f-78354c73-f617-48a4-9fab-a69d960f5e84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76d39162b9ab32ff5b1560fb4b3960be5f187ec008025da15a4d62aee4866669
Date: Fri, 10 Jun 2022 14:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654872479
