Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1826E15A5
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 04:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652243939;
	h=To:Subject:From:Message-Id:Date;
	bh=AFSJ5IVJxGJ2U16XH767CxCq3Mp3sgdwJN7/eassDs4=;
	b=Y0qj25nnIgZzKU/nI8Md9k89oM3ruJtahP7Rn/hDz0B60nEuGwuJLtk45UKgo2bB
	2RMJp75V8eZYy8bD9bG0sINv07WPUEQYgrw+aCz041wPtPoc+bVqyIkCzZmFcWv7Qn3
	wfhiIO1qo3Yrgq8QzhP5Tqz5Jo6bDSyt883oHqOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652243939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AFSJ5IVJxGJ2U16XH767CxCq3Mp3sgdwJN7/eassDs4=;
	b=hz3aZHz6lZe0q9Um7JOCAPUhiD0xmZiWHCnVsB248/JkQ1c/h5gLD1zXvCfZBkib
	zU48e6kkJuN/sr1buOISpOzsFvawXKjZlyBzAgg5Q+xlAQhgW5J/iesEs6TDlts2Hpw
	KLpvm8gFxs0PWeIHz3HOfwALeWENLDaSfR+mIb20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b169bff2-20ac4ab3-a19a-4885-a4e8-1fa0b44e6acd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbe66c1f3f72f60be83285a374d70365fa2da25e5914bd359faa6db94fcc078d
Date: Wed, 11 May 2022 04:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652243939
