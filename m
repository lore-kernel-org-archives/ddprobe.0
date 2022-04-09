Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16798807
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 19:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649530978;
	h=To:Subject:From:Message-Id:Date;
	bh=R2VZe3ImfIh/Ab8sF49ovJ9yrapA9jjWXcUsvovUe48=;
	b=l9o7Cq/L6Z8+ja8y3UW7G7QoeIGgutiqAFQ3oPBjjyz0bKQHqZFn1MPtIarfhQLt
	xXz8RvaA3Nh3eX65lIeXlHWRGrRKYYiFk0ddZqApTR9usnlS4jd0DkpypJe2FxDfYgi
	uiGLwtm5YVp0sgUXC/KO6rYmQxE/oloEoiMs82A0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649530978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R2VZe3ImfIh/Ab8sF49ovJ9yrapA9jjWXcUsvovUe48=;
	b=NE0K5mSWBaO+opK7Rv1wDzocB/o/KPU3HCioR82MXiDhI9UXFnSz0j5I7j0cirKf
	mskOczAYY3eDdwgna7RipJJsGuM/z0r5da+grFsdDNTjrknMI2rDuju81a8HdRFVuP0
	smWllbJG/G2VtPH3boFSVju4PVms/TcBfD+P4AZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800fb54048-93c66de5-e2cf-427e-a6a8-6cf946690c08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e224fa8507801a48305a0b2546afca13ff3780500e0ba446eff05eba59a40f3
Date: Sat, 9 Apr 2022 19:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649530978
