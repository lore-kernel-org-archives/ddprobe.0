Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7981C3D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 17:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655917379;
	h=To:Subject:From:Message-Id:Date;
	bh=dSayr0nhFtn7qzCHTydY7fwvlTYJCq78P9kQqHHR7I0=;
	b=CYUCZmTu3ofGxNvyMrxukCChtPJyX6ztksoJ4S79RIEiczc7Tn/oBsuOOteCBJ1+
	tbOib/s62oeK1JKcZMAMXOqjX2kDHQSahSO7G8xiWRiXLZx3J2cfy1atwgo0TdcE79h
	1oTKzaZtG2rtZDj+JXI67TKDiPksCNUzQtnlBhv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655917379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dSayr0nhFtn7qzCHTydY7fwvlTYJCq78P9kQqHHR7I0=;
	b=gmfa+m6Cry5oklU4HE7JdEXzLM4e/kXD7bbXzgJQs5K/3mhPviM4PZkXj9eg6Dfz
	5ZCmjgzRmyW8E3he25Px6I6GSjjZ51BPsLn+fo7cqLa5wrAMtstf2vrKSBtBcat1Thp
	wLolmeWOdYrU3BMb1QSjB3hQSEZaZwyflpczt2nw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c5dff02-7013c358-5151-4de0-b31c-377d9d1eb370-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66e197a6a6d2ab52eb77d9ac9a3ab7b66cdcd54ff99c434a3d1afda1d3e7d52d
Date: Wed, 22 Jun 2022 17:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655917379
