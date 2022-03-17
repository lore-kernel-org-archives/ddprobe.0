Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507882F3A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647485484;
	h=To:Subject:From:Message-Id:Date;
	bh=lcCpofRarq5EF4yVSTDQMhVqt6P8b/p1lcxXirbHPH0=;
	b=FpMrK0/+WdSMMdgxCp/ZNuVycnInfxl1uueSvwFkelVasa8fcuDXqdcl+swSXnZ2
	EWAMjZ5MnaL9oWERACSMdW3ybOI6cUu/RDVPvNBup3wvz5RsK1/l0UjEQoQyN5wqY28
	2sENOsoil0fvC8/CIZ/xbz9MdDSXPiI4enJ3KUn4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647485484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lcCpofRarq5EF4yVSTDQMhVqt6P8b/p1lcxXirbHPH0=;
	b=ESJD2sDv9Dop7PnD3mL09lFkJm1ZujZoCRoHcd3Kg0IfcIki/AqhbIgiDM+J1kbC
	/Jb7YdnfRmQA2LaUD2sQeFSFsALLeIC6PvWSJ+AH/nkhmfj32aPVw7PxRalRISk3cgE
	9vZxmClKWYEU2+ywiSp0HsMoMvU3EWMVMz/OEi9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95c97e93-5f516f5c-af84-441d-9026-2e67f65848e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ef94c5535e5c576553c9729e28f3cc03576b6dd3144919ca9da92d94f9b24f1
Date: Thu, 17 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647485484
