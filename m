Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233DC2F21
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 11:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652355599;
	h=To:Subject:From:Message-Id:Date;
	bh=P4S3G7RNJB2FOQl9rS25ArifImXJTBCdvz6MfhEg8IQ=;
	b=j6ik/A3FkdVryjTg6lbuNwLEIXN8nY8RVUsbzGX00eIUZOtSPzGkaG3TOxT5zyLW
	M9KG3viOx9fKr5KzkGmvbfM0w9WeU4vVEwp+hFBjj6GUdm4XuESXhhUTpFJqCcGq+JD
	7Vg/lWQZKZ5/XykW0L00a13LGP6OSAPUvnHOimPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652355599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P4S3G7RNJB2FOQl9rS25ArifImXJTBCdvz6MfhEg8IQ=;
	b=Rv+QTor4tpRKTnernroIy5E07ZtvFzD0nXXQWRKFQ0t4dOW0pMt82VuOu38t4ArW
	egryqc0i33fgU/GTzBWxWg/+tty1xiVwlTo4OyVLeCu3OPpP3Xgx4acKMqjFsKiNgnF
	yU2Hnzj+T+ctrzS13eM4OnukzxlvIRfwEbRz5+qw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b8118bcd-bf7bf48f-4a47-4084-8a42-0ab3a6fadac6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15344255242638139c0789f197a34b7536900f8d62fe38469c4b2ee32c3d8ebf
Date: Thu, 12 May 2022 11:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652355599
