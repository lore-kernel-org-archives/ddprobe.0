Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BE07A
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 07:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653810899;
	h=To:Subject:From:Message-Id:Date;
	bh=qUHC89+mKAxxse2LxsWlaPpr6WMZIoUTLt09S3WVeKg=;
	b=WGB8ZI0bALUhIUPd+jSTnjAGFtx8DiJpMMxJamWXN9Dxgh1C+QdUk2sD5pKnRzTs
	CuXmJYnye/mGb6Bf0kAYNtgs3/MdRgt8kTiUapuI+TA5Dbnc9DY6U81Xatt7Ycnm394
	zXylQ9Ox1BweDRo1nKQkqEgSVD90fpX2lflka/Zk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653810899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qUHC89+mKAxxse2LxsWlaPpr6WMZIoUTLt09S3WVeKg=;
	b=SJueOLlqEo3y02Yp9O/pv/sltmL4FtgVCbQL73jisjxibgkNpX59ZNiSN8xXbJB7
	9RCdHzxsE9d716PaAnS14pFO0qo76KoLb09Cdb4pXwTLh+Ll6wwV2N7A19mrJQcJKRK
	6MLmyyn+PQAxgKfUX2OY4lAJ7mpxiYhBeA+iwP+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810ecfa97a-253f3ca2-e1fc-4338-ba13-baaa74383360-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4cf55cfe26fd47bdfa40f739218e9fdf4d1c13837c96624f5f4647cb29de8e7f
Date: Sun, 29 May 2022 07:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653810899
