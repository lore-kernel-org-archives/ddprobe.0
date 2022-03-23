Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15BD614D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648059685;
	h=To:Subject:From:Message-Id:Date;
	bh=7ErHji3gqsJ3G87iZpbPE+v7fMMyG7PTUIohQ9UMNec=;
	b=R8hJOm33aEFL3CkhK8D02fR45130ZoNxEbx1472RxMx3GQ2L+gPKWdkf8huRd28x
	KW5G8ufeMxJpWNtDFU7nVdN2rxV9CnFh+iMiN1HR1K+NgXfI2tO+kvIVicxQeVw3xJl
	ctCMECoMWK8Typh4MEmxPQQjqN8FQPtRHJTWFOJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648059685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7ErHji3gqsJ3G87iZpbPE+v7fMMyG7PTUIohQ9UMNec=;
	b=LqRrt0hkY60yFyA6GV5d/lQLvF06tS6EADlvMbW5GXN/viWhYiDI8Y2E7oMbF6Z6
	K8nQraFZ9Yl4ETofQ7/PplV0LsSWrfScXeqOwAIZOlDVCVrFW0cls+FCoINnNpNzMc0
	O1ynKtNUx+U45OL8iqQmWwFtitGdCFXByj5RhHCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb80317b9-f7f18390-a5ef-4c34-883a-fa19652ae347-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 314540f13888292ae725879c744fb87fbab25c8893f9252e4a2e56c6ae1ba41b
Date: Wed, 23 Mar 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648059684
