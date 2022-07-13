Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ACA46B3
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657732012;
	h=To:Subject:From:Message-Id:Date;
	bh=bCPK8gh6guJFZicAT8IXUnpH25Pvkio0Kgw63BLktyo=;
	b=Iu0JS7R7y/oJEt/OMl3gKXQ4l4n0Ev9N05jDavfL8Rhm6L89TrgMhxAY34uVTjzh
	zGvqlWn6PMtq3jpMZ1QPhLKVWyXoN4V7CIYGGyorHnudAXD3i8Krwuk/z+SELC0DTvZ
	/nQsHlM0CqtMI/uQ74bq1kL4F6A+JeSkfcRfLVoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657732012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bCPK8gh6guJFZicAT8IXUnpH25Pvkio0Kgw63BLktyo=;
	b=DQ5CtLyrOBT4vGkg9qW0abxe2dPY30iEb1FrtDYX94WjlCKdFybxhy6AViR4yzZu
	+2H2MdSEMAHhcGIqtdQMIcXaf0FzWWHmJyx/B3FIJQQZZaIKMWZwHVIMUTUcH0Zz5MW
	wXxLq/Ht/baUMnCYUg16pgMk0HgW6ZW8LEFl0mGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f8871929-8e7f4a55-5988-4fa2-8b1c-55d8cc69618e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db06390e57de979db8dd7f4d0fc58184b77bfbc79fdc82371c60ca22659002a4
Date: Wed, 13 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657732012
