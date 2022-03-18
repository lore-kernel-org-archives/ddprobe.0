Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939EB15AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647576685;
	h=To:Subject:From:Message-Id:Date;
	bh=ljrHmXHAwbMNpfQoA0LJwCzoCv6UoXIF2ZAlACiq3j4=;
	b=D4htLUDoBtkyGiEqlPFUXGyOH38OnNqXBCC7/2n2INI5+UuuECDvKlzbkFdPvwWh
	wBKhyopq88HO6/M7cWj9Vdp8EaEca5b/ezGXIIGAD8Vvyqd3Txn4/o4Pt33QQNZ4b+l
	AW6jPNyxHO9LyX2IPXOGZ/jDO0AuhUXqxqc0ygHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647576685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ljrHmXHAwbMNpfQoA0LJwCzoCv6UoXIF2ZAlACiq3j4=;
	b=MQHCGk+wL2HCi4m8eXdp7UZ64YrltiGyRykpWouWYbYaOr1YyZilj7NwPyihLjob
	AcG+LXhW4D0Z4M0ojtj5QuJ9YCMaJre4CXaBuzWSkvkcZi1kddAEz7wxJdlk3IDyuC6
	J2iqXuhsxr8SgPxow1TF3e5bSFnNfUli/jHhHbVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b391937-b7195879-7ab3-40bc-ae3d-d88599394c82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93719374e69fa118aeb50f88948a0a20a85ce1aa55ffe6b25d1cef89dff79c5b
Date: Fri, 18 Mar 2022 04:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647576684
