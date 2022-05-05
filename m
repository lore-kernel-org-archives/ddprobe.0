Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27543632
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 14:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651759558;
	h=To:Subject:From:Message-Id:Date;
	bh=4TtgWq7XDnsqu/F16wIsK8xrKDktZwgWdDOKpj76o3Y=;
	b=ZB/suweMNgclh1Bg9xJcO1eiIPrHnoSAxslJuqBhVU9+Tor66vWKb0Ik08REqqg4
	lXwsJ9B6ZDhCV5sdTi8AAENcslIGlFSkseAj4X4sGaVA9JwZ0LAy7nhjzgi1agpBTJP
	PHEm0MxThbg/zcjSCC1sikwsvOl9CeBjgPxQ5TS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651759558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4TtgWq7XDnsqu/F16wIsK8xrKDktZwgWdDOKpj76o3Y=;
	b=ZfIyWyIlte78iWKA/60vg4bx5wgHs4JbnwGodqfZlrwmoFlsW9VDWOIOu61udobF
	NOoq8727e5amamBfeNXDRPPV+7WTK4IZihqWA7MNohkHArGMzfaCz7ZgA/qrdsZ+Is0
	ct8KfS1Vlehf2vAU7AxzmRReFPCS0ADsZn5aVRvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180948aaece-f8c29937-f8a3-4158-8fd0-cb1dfec69283-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f45ed2435080a39a772bf8f75cccdff0ce3e21f34aa7590555e0224b63a29d27
Date: Thu, 5 May 2022 14:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651759558
