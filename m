Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BA02F5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647424584;
	h=To:Subject:From:Message-Id:Date;
	bh=7igUj7o8aRBXfFHVP/+ruS2UBJq9pFS0m+Y6Z4EzY+E=;
	b=LAI+kXecOjEb/FOkpE6LsUuf4lNgiDuMUGkORviUAAcq+Nc7ABk94qIBgOAcGBoY
	SyQGDlslGrFJaecEJ8bYJgHiRp3zzDekDmqt+0wugFCgZMzIlFFTgo3cBoHZxCI9WnY
	wxX3Uz2OAdgJUzaraDDF7WseTWJYsQlTPAyf9Zu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647424584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7igUj7o8aRBXfFHVP/+ruS2UBJq9pFS0m+Y6Z4EzY+E=;
	b=MFhOA/zWS/aPellicVj2gFhnOt2beQyg+S+t1LnTPLRh1lBhLL9ye04xIg4iOjvl
	O95V9Bmg8hGWFKEIeoC+NPESKn8Vd44gmh5P7/RIQeLhQk/1gNU5c4FfHFci9ogdR8H
	8pI6EK4dYWt6cFhhvLqRIeScJ41B0/dVRYdvswMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92283c1e-e114cf4c-4c46-431d-ae78-98aae965af97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b29144857fe5db4798d442c0525d4686597bdf21b0937a6e6c508c476b94cb4
Date: Wed, 16 Mar 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647424584
