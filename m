Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AE67B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 01:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651194658;
	h=To:Subject:From:Message-Id:Date;
	bh=fGjGqZCDF9yVLpH6wefv42f4gpqZmM3JnPfJiTxNVDM=;
	b=BHsIs0WMo86sAkpVrI1nH9EnHA1CEwM0jEPRqZs7AZzh/fOsdtAxMIPatF+/FSKM
	z8lRuplrgla0yuDUk2OoXT4DznQXVzbNu02r2lE2LgZrIYXv4X/IFQg660d1MR9grCN
	7oF5Jgw4eAJUcc+JelxF8V9WgM8RoIPspIxa/ft0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651194658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fGjGqZCDF9yVLpH6wefv42f4gpqZmM3JnPfJiTxNVDM=;
	b=JJBnomJll6ZDcFJuTzlRGkVJ5JKxTvlwdHzjwveHFaZqzY6W2YL8rMhjgA4YWhHF
	0db0vfO/DdEoIgd8ocq9se/HIv1QhMTzedI/g4JtU1X8MqTjXyTTSOLCWAAXg4BxUd/
	5vjNHoWYApwzZ6oDMdMA8lFoUrwKIJl68SR7nmYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018072defddf-fbbda607-216f-448a-9d6a-33bdf334edf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcb58a3efd0bae818972237d8f17e59cbefb36a5a333016a98c315d41990f4a8
Date: Fri, 29 Apr 2022 01:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651194658
