Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCFD160
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660868452;
	h=To:Subject:From:Message-Id:Date;
	bh=mhwcOg7u2iN9SG2a8qME27zNIu8cv7B7O850rJpWIZI=;
	b=IpZW2ZYTk5wd728gBygi6qOtubYPkdDopzFdwQYni8PRY3PEvB18tK38phcGHKhZ
	af6ctl5FkhQol63+1peRugq92eJnTJlIZcIuswUoy3WMf2GNXy05vZjsXi1vomc3gcI
	vfhhJvb/NljRLRYbz6u9RElxW7JFCfb02Gvlhkfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660868452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mhwcOg7u2iN9SG2a8qME27zNIu8cv7B7O850rJpWIZI=;
	b=iDrestbmASsURKWBDDTkHw964Yds/2uIfO4fk3GF2a1Vni3bDk2SZXzpOoNpvo+H
	8oETLrWRHmtva0DbbgX06NDLRyLKPoZjExXpNBBvhphAdA5gh8fO8s4Itcflvz00cnM
	9HSKPQ2l1aRTFEMvYIR6o9K4YyXfCNpER01O7bKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b37960fb-f2b35649-6e68-4a36-aa68-27775e592655-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d762df5a6c3cd501a14b1fa99b3e10a5bd1aeb3643e44e368431dde1659fd384
Date: Fri, 19 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660868452
