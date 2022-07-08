Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A75627
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657243012;
	h=To:Subject:From:Message-Id:Date;
	bh=Zmti5lkt2qC2RzoPh2qak6d3Yuk0Nq9LQXFHU875n0s=;
	b=ZbNSsZMQOxWbtMAw3M240+hR5wOzlqc0+IjdomT3TiSrkqzKTQzdZq5cWhcTLDhz
	BDCA3DzULhVH1N5ydzCJ4kLTdPSBjc+C7aRJi1FskRmJh9YnS4kOkT5CWN5nX23MbPT
	qMTS+dwUgFYJRApNpVZgaBheXJZuRJg81RqbLs64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657243012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zmti5lkt2qC2RzoPh2qak6d3Yuk0Nq9LQXFHU875n0s=;
	b=L20fjlm5cdDE+sQAFyb0qe8+AvDMkI21hE5IquFkCh09cbNUgqo+Rx+EWJ0dvRlJ
	dmlJ3iu49mttRvlcMvHbfa1CERRAFtHLILSOQ4ptgLjIXV2iuSbx292xVq3cUqqviP4
	cshbz/j5QpUsuWhNBwz2ltF9W3mK+vkUrhHvIbd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181db618cd7-3c7b5ae1-b1b1-497f-b16b-5d95f5244d68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 115a598003a619fd5e31fda3fc073a6d848f720f7469c7b73bc2c1f822b93e38
Date: Fri, 8 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657243012
