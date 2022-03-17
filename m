Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70612F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 04:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647492985;
	h=To:Subject:From:Message-Id:Date;
	bh=Xc3eUG92hnMqvxxkEoQ1iZiMftBId3H900yMJseLFbk=;
	b=l+lhTppovhZZUmeTIy0y1kueTebrC75MluxA51Pqr7e9dP3xdLNvzDj/EmA7wNwP
	UDh+btcvIbkQmKUpWxDD07bgjptgwb+LR9DiICx+3cRudh6XFEcIjWJzyBccDgUBwKZ
	Yj2gubKMTFytSX9PQy0ZdIjn21JDGJmuNQjFAm5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647492985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xc3eUG92hnMqvxxkEoQ1iZiMftBId3H900yMJseLFbk=;
	b=S7iFPtk76zkc9Bq5c5VBpG5FzMgRtqNp36vddyknojyu80MOoNDWYDSdeT4SDwol
	msAv71d1hwmB3DqJKbF4PW17DpvWhuCa3zrOCTUK2VNlDyLTNqlCy3XaEnbZcM0b6eB
	ed/PqXBwMvUI4aWmjXdzGPp5bNntqui0wLD3GGvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f963bef91-04db32e8-14ca-4101-b4ec-e58aab59153c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3ef1ac5227333bd322f098a927aea3e389c0d3c1ea63fb9adb1bdb18ec08e06
Date: Thu, 17 Mar 2022 04:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647492984
