Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775C036F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647903084;
	h=To:Subject:From:Message-Id:Date;
	bh=uz08JNpf7WdEFrCE9Voc6JsHb0SkU5/ynpQph52fluA=;
	b=B/6q+RN9R3VdilwJzdhJrP+QnrP2Sz458axHfe+K6Oxg1DybZHoB/8YLdyAsKMk3
	zpeu+DTjv+saQm+U5agbPXhTKrEbd9hgTj36cAzEqnilA830QWCvuc2SahQfHq6rfKf
	jU1bX6/nC8aX5ILn64JB9qPpHbSDk8HKlBAj5Ftc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647903084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uz08JNpf7WdEFrCE9Voc6JsHb0SkU5/ynpQph52fluA=;
	b=KcyGCXiFTrNhfesZYFJ/kMROj+9OgpUyxscD2pWQdusTjBtdo2zjscXmjz7axiMb
	p5h2lLyP0pi1g8lw6zdaThytyvKmTGDsU7f73x7lFlh4iS9ooT8Z+NcelSlYIwsRbcv
	oqK1AsgOwehhOLsGO+zEXRj9HdF6XXNXAVsFVwyk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faead910c-fbb1c1b4-37c1-4a6c-a4c5-c7d3342988a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58d0e74dc099a127f7b095153a168c99a08da275a5416286edae2f5df053ae32
Date: Mon, 21 Mar 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647903084
