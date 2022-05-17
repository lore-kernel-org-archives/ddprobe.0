Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8DB1874
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 22:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652825039;
	h=To:Subject:From:Message-Id:Date;
	bh=b0hNwj0Mkc1xt1cRoaFjSexDF8tiZgonSGqhyWKf71A=;
	b=Dr6IdTxOjpg8wT7Fc9TW7WURFYh/rYyb6dY45wZd+tsWBfY8iw0m2sk+mxP7e6FK
	f6HiaAkhDpQy75xSxQcWK+kYzZF1H+CDQTdEAFrI4MqCxi3DeO5CK6NeLJB85W4Y+C7
	zONyh7qMUCgPLN6ddgXoTsou46wG1s30Okvu3L1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652825039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b0hNwj0Mkc1xt1cRoaFjSexDF8tiZgonSGqhyWKf71A=;
	b=CZrDGx3/UOIF6u325IL+cUObXEQEPWlDexnwygEpFZHW9lwZujGTSozIsqUXrCQN
	N6DcPKt5kUkQiZ6cXVE41rwa2pjSGF+n7Vk7EkFUbk5PIbQx46rZGt6zpYSNmXjpDsC
	jabMZ2fuFRISWbrhkGd8Hgh4S7Kvub5WldKMRzoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d40ca197-fc45a9e3-8a29-4972-a83c-d9d948af7b36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1599a74bb785271905c3cd47dced013e7d247fd62b52a05608740e6d71a9874
Date: Tue, 17 May 2022 22:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652825039
