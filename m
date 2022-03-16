Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648FA4688
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647419784;
	h=To:Subject:From:Message-Id:Date;
	bh=4GN7FjP14x2ESWz/f5pUlLUk+SUkRurYvE5YvxROW8E=;
	b=fxlbzr9bs9hsaXDmRUn7ota6uPGDenbevtD7eMHiVmwg9U6rXcTiR6WMKnpD96Sf
	hXZTmeiabbKP0QSV7B80YZhqfQncuCfHJ/uRihLaaA2qePDX0iTU2cf9WG53vz0EzOp
	uFb9xwxJJliWWu/BOBXUmhO9MT2XnS3fTzjxzY+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647419784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4GN7FjP14x2ESWz/f5pUlLUk+SUkRurYvE5YvxROW8E=;
	b=jCrz/+G7GUNd9Xuma/+PyFrC0KLJRQP1ZLgtBDfXg93F+4iwqKgeUt3lFoiORa0T
	Ih19NoAnGJvrvrwHgxBG+rAAmnE5VpwbKK2SQX8MVwOIVZDuzYS8uGGrYaiW8UDM7h5
	QWxh053tsB42Lzvv3lBmOCT1/eV95ERe+HDs8KXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91defe41-69fdd29b-4afe-4a55-b65f-483f495aa552-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f9cfbef0c97d15851b84d1928baa0facdb2e72b9415342860803ea5188042e8
Date: Wed, 16 Mar 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647419784
