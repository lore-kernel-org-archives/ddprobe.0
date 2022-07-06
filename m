Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C68E20EC
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 03:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657077412;
	h=To:Subject:From:Message-Id:Date;
	bh=Et4KUTqFZSFLqlQn++4Abnmns497Vm86jNfo21dfB5A=;
	b=X7JOlGAKCa3vtW8OFcwpRyoigrd6dOKJlCcO0ynOfQra4d7KEGpwN7dhiz6kp0u7
	/jClL0FMFV4GwTpvh7yGkQYe7MgVQCvdHCcpKSMBpIV0yHVKh34qTNVKWUrmjG4z4Po
	rgClfQ9jM7xFQZElUDa1YQuQZzSh3dTwWao+3H+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657077412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Et4KUTqFZSFLqlQn++4Abnmns497Vm86jNfo21dfB5A=;
	b=dE4yXK1UZiJBZJ0lRuO7jTSsTSye0I1qqA2dtdSsjsdksi1WPnVewaAvNNtb9cay
	SgQkIshnMlvUTDHXW1YTru2evKg9/5sDWs8O9DmJ2kXGmvTtt1MmbF5tw0UKyCy4IH7
	7seJFMT+0cQ63rJvUClVpFXwTqsFwCcWmmlEh2dk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d182b192-a04c3d88-71d7-47c2-8754-52c90caeb7ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d1b2b098d3c8352c14c18ef50f9577e0deee8720b2fc1012121091585425b97
Date: Wed, 6 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657077412
