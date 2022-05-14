Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05362631
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 20:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652561219;
	h=To:Subject:From:Message-Id:Date;
	bh=U0DafCafq3YIDXNMKiZtFvn3o/G5wuEFMIYq2jvlImI=;
	b=LkWlNexf0DFuWbAPCU7Qwr0jnTuEWWbd86rWWpzme+E95dS/BHGHzLxfTp02uTOe
	Cr55IN5IQkjP892uIo9E+H9Ns4X1T64WwHsefCRM/8URZ31VnK8E6aRdaijySMidVRD
	iVpP0Mfe4EWhCXl3jwDZVsi424Lf91+nZBbQ8F7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652561219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U0DafCafq3YIDXNMKiZtFvn3o/G5wuEFMIYq2jvlImI=;
	b=A/lMo2zFGVHvhBmimWBBC184XxnJ5Ag7itOg0ycTQT/kQcbLIz5XybJ6XlImnSaC
	5P9BCwWqM2lIQCXh5kfqupwrIHxjhGuJ0ZwD2Ov6X0CnyO0LimVxOVAQ7ZklsOXhIRz
	dAovx+Qr7/BKMkxq3hYMRKye4qBA08qaP63WIRyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c4530eb8-4092e0de-554f-403f-a850-74a0e7d08f22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea3444a14ebb4af18939a37903d1b7e47f8298ecfdb0d10f444b63443f97a8ac
Date: Sat, 14 May 2022 20:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652561219
