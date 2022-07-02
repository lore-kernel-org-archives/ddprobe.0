Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE225818
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656758212;
	h=To:Subject:From:Message-Id:Date;
	bh=U/kaS1XkIlV3O1rDMZQcD54nK3harpETvrbC0D8Wb94=;
	b=WRHBxdFuLAcfb8cgP7OQXPdwkf4023TIyfGvH6yyJ6SVYiyBUD79E1K4vZq4W18p
	HIPLCFMMtT9/QVRceR5MqSYF2OlJeMaxehP7YQehBJizlkUowh4eMn8HGLH/v8VqGba
	oLfTQxnBpra+RvUGfett2/Haulm5jgp2WPpHarJU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656758212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U/kaS1XkIlV3O1rDMZQcD54nK3harpETvrbC0D8Wb94=;
	b=Fx4yPxW9lJjlMPWuw6Z6UDOKsbO6yVR+zs9Vgn00f26JCg9Vqsp6oEGynUX+zWHi
	DtpKGMpyRbNJx+9efqXOA9SHqjtMspvemteZMSwWZasXDWpFBgWDj1Lp23Nm3aDMkoP
	mvWEBfA+3C5djbd6W8Sf18KC+d9bCVgCr1gT0nqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181be7c1717-fa1d2d3f-f45f-4f3a-8320-6ff4592ad87b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bebdd6e79879a9ff088afd0625fd2c721f29173eadb12d89a69faa44b9ac842
Date: Sat, 2 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656758212
