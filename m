Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E80C6022
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657103812;
	h=To:Subject:From:Message-Id:Date;
	bh=UAGN7W3bxKEMOSUxs0f9wHPnigZuoZOAFUTI+Q+eFQI=;
	b=U+3XF+F5pX17DQJBuRDtPm1XBik2iz0Pn8ldMDYmlBK7oUgaf+mrmNV63PZpYWkJ
	K3+rYwIe0crjpqiqldQBkPbwj+Ad6TZJi8sX0HyUYBYQ2Dakr50B28E4tBkMYT6zcVD
	yp7sM+RpcvObr6t+tfV+lzdBqgwtdGpVRhsJ/Jtg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657103812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UAGN7W3bxKEMOSUxs0f9wHPnigZuoZOAFUTI+Q+eFQI=;
	b=CvbQ68WneAT9E+2Z6yoo/AXnCzLV4q7LeBqhHoN3JOTAA5CgdZTjDz3zR7TdZJJJ
	6fmUav5bdbUnWsTPoOYqcxOpTKixrhJ9qnRK5jjA7Vd4T/qnzA+aZ6CTBAQZyrCpjS8
	ElQJKjP/AH9QSa8aprOeiVpJ8U8a21RHAu2juYMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d31586c3-0690af67-692b-4367-99fa-0b2e7c7562b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7face47de34177f1424da6e8b9b96ab02dddf98ffaa93cfe0476a43c7da2615b
Date: Wed, 6 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657103812
